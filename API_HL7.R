doc <- GET("http://fhirbird1.australiaeast.cloudapp.azure.com/cortex/sydney1/FHIRBird/Patient",  authenticate("admin","abc123",type = "basic"),encode = "json", accept_json())

names(doc)

this.raw.content <- rawToChar(raw.result$content)
this.content <- fromJSON(this.raw.content)

PatientDetails <- this.content$entry

names(PatientDetails)

CombainedPatientDetails <- cbind(as.data.frame(PatientDetails$fullUrl as fullUrl,ncol(1)) ,flatten(PatientDetails$resource, recursive= "TRUE" ))

