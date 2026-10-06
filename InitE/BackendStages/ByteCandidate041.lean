import InitE.BackendStages.BytePiecesData283
import InitE.BackendStages.BytePiecesData284
import InitE.BackendStages.BytePiecesData285
import InitE.BackendStages.BytePiecesData286
import InitE.BackendStages.BytePiecesData287
import InitECandidate.Bytes041
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem candidate041_eq : InitECandidate.bytes041 = [piece283_1, piece284_0, piece285_0, piece286_0, piece287_0].flatten := by
  rw [piece283_1_eq, piece284_0_eq, piece285_0_eq, piece286_0_eq, piece287_0_eq]
  rfl
#print axioms candidate041_eq
end InitE.BackendStages.BytePieces
