import InitE.BackendStages.BytePiecesData383
import InitE.BackendStages.BytePiecesData384
import InitE.BackendStages.BytePiecesData385
import InitE.BackendStages.BytePiecesData386
import InitE.BackendStages.BytePiecesData387
import InitE.BackendStages.BytePiecesData388
import InitECandidate.Bytes058
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem candidate058_eq : InitECandidate.bytes058 = [piece383_1, piece384_0, piece385_0, piece386_0, piece387_0, piece388_0].flatten := by
  rw [piece383_1_eq, piece384_0_eq, piece385_0_eq, piece386_0_eq, piece387_0_eq, piece388_0_eq]
  rfl
#print axioms candidate058_eq
end InitE.BackendStages.BytePieces
