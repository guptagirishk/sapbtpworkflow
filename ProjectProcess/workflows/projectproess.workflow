{
	"contents": {
		"66c71144-6df8-4538-8767-f294ca303480": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "projectproess",
			"subject": "projectproess",
			"businessKey": "Project_00${context.project_id}",
			"name": "projectproess",
			"documentation": "",
			"lastIds": "62d7f4ed-4063-4c44-af8b-39050bd44926",
			"events": {
				"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
					"name": "StartEvent1"
				},
				"2798f4e7-bc42-4fad-a248-159095a2f40a": {
					"name": "EndEvent1"
				}
			},
			"activities": {
				"1ad0cd69-342e-4b42-9396-0f863d5aa785": {
					"name": "New Project1"
				},
				"c427e2ae-e595-4fe5-82b6-2a9a17b30666": {
					"name": "UserTask4"
				},
				"592cb2a9-be02-4c30-8f96-1d347d0a7fe5": {
					"name": "MailTask1"
				}
			},
			"sequenceFlows": {
				"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
					"name": "SequenceFlow1"
				},
				"c89bc254-a60f-4762-a27f-601315d28be9": {
					"name": "SequenceFlow3"
				},
				"608e1094-499e-4ea4-9fec-4559913e34c0": {
					"name": "SequenceFlow4"
				},
				"7a964ef8-1c7f-481c-b6df-8d2f67769d2e": {
					"name": "SequenceFlow5"
				}
			},
			"diagrams": {
				"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {}
			}
		},
		"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "StartEvent1"
		},
		"2798f4e7-bc42-4fad-a248-159095a2f40a": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "EndEvent1"
		},
		"1ad0cd69-342e-4b42-9396-0f863d5aa785": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Request for ${context.name}",
			"description": "Please review this request for ${context.name}",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": true,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "",
			"recipientGroups": "First_Level_Approver",
			"formReference": "/forms/projectproess/RequestDecision.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "requestdecision"
			}, {
				"key": "formRevision",
				"value": "1"
			}],
			"id": "usertask2",
			"name": "New Project1"
		},
		"c427e2ae-e595-4fe5-82b6-2a9a17b30666": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Second level ",
			"description": "Please review this request for ${context.name}",
			"priority": "LOW",
			"isHiddenInLogForParticipant": false,
			"supportsForward": true,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "",
			"recipientGroups": "Second_Level_Approver",
			"formReference": "/forms/projectproess/RequestDecision.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "requestdecision"
			}, {
				"key": "formRevision",
				"value": "1"
			}],
			"id": "usertask4",
			"name": "UserTask4"
		},
		"592cb2a9-be02-4c30-8f96-1d347d0a7fe5": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"id": "mailtask1",
			"name": "MailTask1",
			"mailDefinitionRef": "319b9349-eb51-402d-b525-57413f8c9b7e"
		},
		"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "1ad0cd69-342e-4b42-9396-0f863d5aa785"
		},
		"c89bc254-a60f-4762-a27f-601315d28be9": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow3",
			"name": "SequenceFlow3",
			"sourceRef": "1ad0cd69-342e-4b42-9396-0f863d5aa785",
			"targetRef": "c427e2ae-e595-4fe5-82b6-2a9a17b30666"
		},
		"608e1094-499e-4ea4-9fec-4559913e34c0": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow4",
			"name": "SequenceFlow4",
			"sourceRef": "c427e2ae-e595-4fe5-82b6-2a9a17b30666",
			"targetRef": "592cb2a9-be02-4c30-8f96-1d347d0a7fe5"
		},
		"7a964ef8-1c7f-481c-b6df-8d2f67769d2e": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow5",
			"name": "SequenceFlow5",
			"sourceRef": "592cb2a9-be02-4c30-8f96-1d347d0a7fe5",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"53e54950-7757-4161-82c9-afa7e86cff2c": {},
				"6bb141da-d485-4317-93b8-e17711df4c32": {},
				"3e2c176f-d2d4-47a3-8efc-913ca0b158d7": {},
				"ed330d9e-fcf9-4998-bbbb-b66824aba13e": {},
				"761e1436-0d21-4ad3-a0ef-69614e5b711e": {},
				"33ad8f5f-5937-4dd7-90b0-efb73e4d5c55": {},
				"aa730b12-5fe8-4406-ab67-34ec1896c9bf": {},
				"43bdb0bf-ad12-4abe-afe4-f52506268939": {}
			}
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 46,
			"y": 12,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"53e54950-7757-4161-82c9-afa7e86cff2c": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 44.5,
			"y": 424,
			"width": 35,
			"height": 35,
			"object": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"6bb141da-d485-4317-93b8-e17711df4c32": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "62,44 62,94",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "3e2c176f-d2d4-47a3-8efc-913ca0b158d7",
			"object": "c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f"
		},
		"3e2c176f-d2d4-47a3-8efc-913ca0b158d7": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 12,
			"y": 94,
			"width": 100,
			"height": 60,
			"object": "1ad0cd69-342e-4b42-9396-0f863d5aa785"
		},
		"ed330d9e-fcf9-4998-bbbb-b66824aba13e": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 12,
			"y": 204,
			"width": 100,
			"height": 60,
			"object": "c427e2ae-e595-4fe5-82b6-2a9a17b30666"
		},
		"761e1436-0d21-4ad3-a0ef-69614e5b711e": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "62,154 62,204",
			"sourceSymbol": "3e2c176f-d2d4-47a3-8efc-913ca0b158d7",
			"targetSymbol": "ed330d9e-fcf9-4998-bbbb-b66824aba13e",
			"object": "c89bc254-a60f-4762-a27f-601315d28be9"
		},
		"33ad8f5f-5937-4dd7-90b0-efb73e4d5c55": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "62,264 62,314",
			"sourceSymbol": "ed330d9e-fcf9-4998-bbbb-b66824aba13e",
			"targetSymbol": "aa730b12-5fe8-4406-ab67-34ec1896c9bf",
			"object": "608e1094-499e-4ea4-9fec-4559913e34c0"
		},
		"aa730b12-5fe8-4406-ab67-34ec1896c9bf": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": 12,
			"y": 314,
			"width": 100,
			"height": 60,
			"object": "592cb2a9-be02-4c30-8f96-1d347d0a7fe5"
		},
		"43bdb0bf-ad12-4abe-afe4-f52506268939": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "62,374 62,424",
			"sourceSymbol": "aa730b12-5fe8-4406-ab67-34ec1896c9bf",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "7a964ef8-1c7f-481c-b6df-8d2f67769d2e"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"timereventdefinition": 1,
			"maildefinition": 1,
			"sequenceflow": 5,
			"startevent": 1,
			"endevent": 1,
			"usertask": 4,
			"mailtask": 1
		},
		"319b9349-eb51-402d-b525-57413f8c9b7e": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition1",
			"to": "girish.kumar.gupta@sap.com",
			"subject": "Please approve ",
			"text": "Please approve the new project",
			"id": "maildefinition1"
		}
	}
}