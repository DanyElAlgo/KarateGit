full_flow_pet.feature (Orquestador)

Feature: Flujo completo de prueba para mascota

Scenario: Crear, consultar, actualizar y eliminar mascota
* def createResult = call read('1.CreatePet.feature')
* def petId = createResult.petId

* call read('2.GetPet.feature') { petId: '#(petId)' }
* call read('UpdatePet.feature') { petId: '#(petId)' }
* call read('3.DeletePet.feature') { petId: '#(petId)' }