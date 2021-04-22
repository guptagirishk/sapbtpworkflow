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
				},
				"a22054e3-f209-4020-8464-cafa905c9a83": {
					"name": "BoundaryTimerEvent1"
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
				},
				"51c57b68-d5b0-413b-967e-8704417a052d": {
					"name": "ScriptTask1"
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
				},
				"51bffd0e-2219-4439-bd27-c2bfd20ae4a5": {
					"name": "SequenceFlow6"
				},
				"bc4e6986-c740-467f-ba6c-e4d9638a1c4d": {
					"name": "SequenceFlow8"
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
		"a22054e3-f209-4020-8464-cafa905c9a83": {
			"classDefinition": "com.sap.bpm.wfs.BoundaryEvent",
			"isCanceling": true,
			"id": "boundarytimerevent1",
			"name": "BoundaryTimerEvent1",
			"attachedToRef": "1ad0cd69-342e-4b42-9396-0f863d5aa785",
			"eventDefinitions": {
				"527360b6-cfa3-4fc1-90a3-f54319d93d30": {}
			}
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
			"targetRef": "51c57b68-d5b0-413b-967e-8704417a052d"
		},
		"7a964ef8-1c7f-481c-b6df-8d2f67769d2e": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow5",
			"name": "SequenceFlow5",
			"sourceRef": "592cb2a9-be02-4c30-8f96-1d347d0a7fe5",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"51bffd0e-2219-4439-bd27-c2bfd20ae4a5": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow6",
			"name": "SequenceFlow6",
			"sourceRef": "a22054e3-f209-4020-8464-cafa905c9a83",
			"targetRef": "c427e2ae-e595-4fe5-82b6-2a9a17b30666"
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
				"43bdb0bf-ad12-4abe-afe4-f52506268939": {},
				"e6bba107-7833-4c68-8d4e-924223d3ac6d": {},
				"c164471c-dc3d-4231-bdbe-138b2e8df2b9": {},
				"5307815c-5dc0-463b-a9d3-cff6433ca4c0": {}
			}
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 111.49999940395355,
			"y": 12,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"53e54950-7757-4161-82c9-afa7e86cff2c": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 109.99999940395355,
			"y": 589.8098165616326,
			"width": 35,
			"height": 35,
			"object": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"6bb141da-d485-4317-93b8-e17711df4c32": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "127.49999940395355,44 127.49999940395355,78.99999940395355 57,78.99999940395355 57,113.9999988079071 91.99999940395355,113.9999988079071",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "3e2c176f-d2d4-47a3-8efc-913ca0b158d7",
			"object": "c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f"
		},
		"3e2c176f-d2d4-47a3-8efc-913ca0b158d7": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 91.99999940395355,
			"y": 113.9999988079071,
			"width": 100,
			"height": 60,
			"object": "1ad0cd69-342e-4b42-9396-0f863d5aa785",
			"symbols": {
				"f1e66392-fc25-4a5d-8912-83f44e416750": {}
			}
		},
		"ed330d9e-fcf9-4998-bbbb-b66824aba13e": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 77.49999940395357,
			"y": 259.8098165616326,
			"width": 99.99999999999999,
			"height": 60,
			"object": "c427e2ae-e595-4fe5-82b6-2a9a17b30666"
		},
		"761e1436-0d21-4ad3-a0ef-69614e5b711e": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "91.99999940395355,113.9999988079071 12,113.9999988079071 12,224.80981715767905 127.49999940395355,224.80981715767905 127.49999940395355,259.8098165616326",
			"sourceSymbol": "3e2c176f-d2d4-47a3-8efc-913ca0b158d7",
			"targetSymbol": "ed330d9e-fcf9-4998-bbbb-b66824aba13e",
			"object": "c89bc254-a60f-4762-a27f-601315d28be9"
		},
		"33ad8f5f-5937-4dd7-90b0-efb73e4d5c55": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "127.49999940395355,319.8098165616326 127.49999940395355,369.8098165616326",
			"sourceSymbol": "ed330d9e-fcf9-4998-bbbb-b66824aba13e",
			"targetSymbol": "c164471c-dc3d-4231-bdbe-138b2e8df2b9",
			"object": "608e1094-499e-4ea4-9fec-4559913e34c0"
		},
		"aa730b12-5fe8-4406-ab67-34ec1896c9bf": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": 77.49999940395355,
			"y": 479.8098165616326,
			"width": 100,
			"height": 60,
			"object": "592cb2a9-be02-4c30-8f96-1d347d0a7fe5"
		},
		"43bdb0bf-ad12-4abe-afe4-f52506268939": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "127.49999940395355,539.8098165616326 127.49999940395355,589.8098165616326",
			"sourceSymbol": "aa730b12-5fe8-4406-ab67-34ec1896c9bf",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "7a964ef8-1c7f-481c-b6df-8d2f67769d2e"
		},
		"e6bba107-7833-4c68-8d4e-924223d3ac6d": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "207.99999940395355,173.8098177537255 242.9999988079071,173.8098177537255 242.9999988079071,224.80981715767905 127.49999940395355,224.80981715767905 127.49999940395355,259.8098165616326",
			"sourceSymbol": "f1e66392-fc25-4a5d-8912-83f44e416750",
			"targetSymbol": "ed330d9e-fcf9-4998-bbbb-b66824aba13e",
			"object": "51bffd0e-2219-4439-bd27-c2bfd20ae4a5"
		},
		"f1e66392-fc25-4a5d-8912-83f44e416750": {
			"classDefinition": "com.sap.bpm.wfs.ui.BoundaryEventSymbol",
			"x": 174.05114996011574,
			"y": 157.8098177537255,
			"object": "a22054e3-f209-4020-8464-cafa905c9a83"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"messageeventdefinition": 1,
			"timereventdefinition": 2,
			"maildefinition": 1,
			"sequenceflow": 8,
			"startevent": 1,
			"intermediatemessageevent": 1,
			"boundarytimerevent": 1,
			"endevent": 1,
			"usertask": 4,
			"scripttask": 1,
			"mailtask": 1
		},
		"319b9349-eb51-402d-b525-57413f8c9b7e": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition1",
			"to": "girish.kumar.gupta@sap.com",
			"subject": "Please approve ",
			"text": "Please approve the new project",
			"id": "maildefinition1"
		},
		"527360b6-cfa3-4fc1-90a3-f54319d93d30": {
			"classDefinition": "com.sap.bpm.wfs.TimerEventDefinition",
			"timeDuration": "PT2M",
			"id": "timereventdefinition2"
		},
		"51c57b68-d5b0-413b-967e-8704417a052d": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/projectproess/update_project.js",
			"id": "scripttask1",
			"name": "ScriptTask1"
		},
		"c164471c-dc3d-4231-bdbe-138b2e8df2b9": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 77.49999940395355,
			"y": 369.8098165616326,
			"width": 100,
			"height": 60,
			"object": "51c57b68-d5b0-413b-967e-8704417a052d"
		},
		"bc4e6986-c740-467f-ba6c-e4d9638a1c4d": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow8",
			"name": "SequenceFlow8",
			"sourceRef": "51c57b68-d5b0-413b-967e-8704417a052d",
			"targetRef": "592cb2a9-be02-4c30-8f96-1d347d0a7fe5"
		},
		"5307815c-5dc0-463b-a9d3-cff6433ca4c0": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "127.49999940395355,429.8098165616326 127.49999940395355,479.8098165616326",
			"sourceSymbol": "c164471c-dc3d-4231-bdbe-138b2e8df2b9",
			"targetSymbol": "aa730b12-5fe8-4406-ab67-34ec1896c9bf",
			"object": "bc4e6986-c740-467f-ba6c-e4d9638a1c4d"
		}
	}
}