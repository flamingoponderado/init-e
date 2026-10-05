import InitE.BackendStages.BytePiecesData808
import InitE.BackendStages.BytePiecesData809
import InitECandidate.Bytes186
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem candidate186_eq : InitECandidate.bytes186 = [piece808_2, piece809_0].flatten := by
  rw [piece808_2_eq, piece809_0_eq]
  rfl
#print axioms candidate186_eq
end InitE.BackendStages.BytePieces
