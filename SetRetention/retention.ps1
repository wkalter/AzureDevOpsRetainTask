$daysValid = Get-VstsInput -Name daysValid -Require
Write-Host "##[group]Task variables"
Write-Host "DevOps Team Project: $Env:System_TeamProject"
Write-Host "DevOps Collection Uri: $Env:System_CollectionUri"
Write-Host "DevOps Defintion ID: $Env:System_DefinitionId"
Write-Host "DevOps Build ID: $Env:Build_BuildId"
Write-Host "Task env SYSTEM_ACCESSTOKEN: $Env:System_AccessToken"
Write-Host "Task inputs daysValid: $daysValid"
Write-Host "##[endgroup]"

$token = $Env:System_AccessToken;

$contentType = "application/json";
$headers = @{ Authorization = 'Bearer ' + $token };
$uri = "$Env:System_CollectionUri $Env:System_TeamProject/_apis/build/retention/leases?definitionId=$Env:System_DefinitionId&runId=$Env:Build_BuildId&api-version=7.0"
$existingLease = Invoke-RestMethod -uri $uri -method GET -Headers $headers -ContentType $contentType;
if($existingLease.count -gt 0) {
    Write-Host "##[section] Updating existing lease for current run id: $Env:Build_BuildId"
    $existingLeaseId = $existingLease.Value[0].LeaseId;
    $rawRequest = @{ daysValid = $daysValid ; protectPipeline = $false};
    $request = ConvertTo-Json $rawRequest;
    $uri = "$Env:System_CollectionUri $Env:System_TeamProject/_apis/build/retention/leases/ $existingLeaseId ?api-version=7.0";
    $updatedLease = Invoke-RestMethod -uri $uri -method PATCH -Headers $headers -ContentType $contentType -Body $request;
    Write-Output "Existing lease is updated for the current run";
    Write-Host "##[group]Updated lease information"
    Write-Output $updatedLease
    Write-Host "##[endgroup]"
}else {
    Write-Host "##[section] Adding a new lease for current run id: $Env:Build_BuildId"
    $rawRequest = @{ daysValid = [int]$daysValid; definitionId = [int]$Env:System_DefinitionId; ownerId = 'User:' + $Env:Build_RequestedForId; protectPipeline = $false; runId = [int]$Env:Build_BuildId };
    $request = ConvertTo-Json @($rawRequest);
    Write-Debug "##[debug] Request: $request"
    $uri = "$Env:System_CollectionUri $Env:System_TeamProject/_apis/build/retention/leases?api-version=7.0";
    Write-Debug "##[debug] Uri: $uri"
    $newLease = Invoke-RestMethod -uri $uri -method POST -Headers $headers -ContentType $contentType -Body $request;
    Write-Output "New lease is added for the current run";
    Write-Host "##[group]New lease information"
    Write-Output $newLease.Value[0];
    Write-Host "##[endgroup]"
}
