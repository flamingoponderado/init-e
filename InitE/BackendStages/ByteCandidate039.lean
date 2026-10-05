import InitE.BackendStages.BytePiecesData278
import InitE.BackendStages.BytePiecesData279
import InitE.BackendStages.BytePiecesData280
import InitECandidate.Bytes039
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem candidate039_eq : InitECandidate.bytes039 = [piece278_1, piece279_0, piece280_0].flatten := by
  rw [piece278_1_eq, piece279_0_eq, piece280_0_eq]
  rfl
#print axioms candidate039_eq
end InitE.BackendStages.BytePieces
