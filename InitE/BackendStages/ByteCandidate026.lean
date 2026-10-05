import InitE.BackendStages.BytePiecesData237
import InitE.BackendStages.BytePiecesData238
import InitE.BackendStages.BytePiecesData239
import InitE.BackendStages.BytePiecesData240
import InitECandidate.Bytes026
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem candidate026_eq : InitECandidate.bytes026 = [piece237_1, piece238_0, piece239_0, piece240_0].flatten := by
  rw [piece237_1_eq, piece238_0_eq, piece239_0_eq, piece240_0_eq]
  rfl
#print axioms candidate026_eq
end InitE.BackendStages.BytePieces
