browser urls
browserUrlContents: aRequest

	aRequest = 'start' ifTrue: [ 
		^MIMEDocument contentType: 'text/html' content: self startPage ].

	aRequest = 'about' ifTrue: [
		^MIMEDocument contentType: 'text/html' content: self aboutScamperHTML ].
	
	aRequest = '400' ifTrue: [
		^MIMEDocument contentType: 'text/html' content: self error400Page  ].
	
	aRequest = '401' ifTrue: [
		^MIMEDocument contentType: 'text/html' content: self error401Page  ].
		
	aRequest = '402' ifTrue: [
		^MIMEDocument contentType: 'text/html' content: self error402Page  ].	
		
	aRequest = '403' ifTrue: [
		^MIMEDocument contentType: 'text/html' content: self error403Page  ].	
	
	aRequest = '404' ifTrue: [
		^MIMEDocument contentType: 'text/html' content: self error404Page  ].	
	
	aRequest = '405' ifTrue: [
		^MIMEDocument contentType: 'text/html' content: self error405Page  ].	
	
	aRequest = '406' ifTrue: [
		^MIMEDocument contentType: 'text/html' content: self error406Page  ].	
	
	aRequest = '407' ifTrue: [
		^MIMEDocument contentType: 'text/html' content: self error407Page  ].	
	
	aRequest = '404' ifTrue: [
		^MIMEDocument contentType: 'text/html' content: self error404Page  ].	
	
	aRequest = '404' ifTrue: [
		^MIMEDocument contentType: 'text/html' content: self error404Page  ].	
	
	aRequest = '408' ifTrue: [
		^MIMEDocument contentType: 'text/html' content: self error408Page  ].	
	
	aRequest = '409' ifTrue: [
		^MIMEDocument contentType: 'text/html' content: self error409Page  ].	
	
	aRequest = '410' ifTrue: [
		^MIMEDocument contentType: 'text/html' content: self error410Page  ].	
	
	aRequest = '411' ifTrue: [
		^MIMEDocument contentType: 'text/html' content: self error411Page  ].	
	
	aRequest = '412' ifTrue: [
		^MIMEDocument contentType: 'text/html' content: self error412Page  ].
	
	aRequest = '413' ifTrue: [
		^MIMEDocument contentType: 'text/html' content: self error413Page  ].
		
	aRequest = '414' ifTrue: [
		^MIMEDocument contentType: 'text/html' content: self error414Page  ].
		
	aRequest = '415' ifTrue: [
		^MIMEDocument contentType: 'text/html' content: self error415Page  ].
		
	aRequest = '416' ifTrue: [
		^MIMEDocument contentType: 'text/html' content: self error416Page  ].
		
	aRequest = '417' ifTrue: [
		^MIMEDocument contentType: 'text/html' content: self error417Page  ].
		
	aRequest = '418' ifTrue: [
		^MIMEDocument contentType: 'text/html' content: self error418Page  ].
		
	aRequest = '420' ifTrue: [
		^MIMEDocument contentType: 'text/html' content: self error420Page  ].
		
	aRequest = '421' ifTrue: [
		^MIMEDocument contentType: 'text/html' content: self error421Page  ].
		
	aRequest = '422' ifTrue: [
		^MIMEDocument contentType: 'text/html' content: self error422Page  ].
		
	aRequest = '423' ifTrue: [
		^MIMEDocument contentType: 'text/html' content: self error423Page  ].
		
	aRequest = '424' ifTrue: [
		^MIMEDocument contentType: 'text/html' content: self error424Page  ].
		
	aRequest = '425' ifTrue: [
		^MIMEDocument contentType: 'text/html' content: self error425Page  ].
		
	aRequest = '426' ifTrue: [
		^MIMEDocument contentType: 'text/html' content: self error426Page  ].	
				
	aRequest = '428' ifTrue: [
		^MIMEDocument contentType: 'text/html' content: self error428Page  ].
			
	aRequest = '429' ifTrue: [
		^MIMEDocument contentType: 'text/html' content: self error429Page  ].
			
	aRequest = '431' ifTrue: [
		^MIMEDocument contentType: 'text/html' content: self error431Page  ].
			
	aRequest = '451' ifTrue: [
		^MIMEDocument contentType: 'text/html' content: self error451Page  ].
	^ nil