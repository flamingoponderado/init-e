import InitE.BackendStages.BytePiecesData456
import InitE.BackendStages.BytePiecesData457
import InitE.BackendStages.BytePiecesData458
import InitE.BackendStages.BytePiecesData459
import InitECandidate.Bytes068
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem candidate068_eq : InitECandidate.bytes068 = [piece456_1, piece457_0, piece458_0, piece459_0].flatten := by
  rw [piece456_1_eq, piece457_0_eq, piece458_0_eq, piece459_0_eq]
  rfl
#print axioms candidate068_eq
end InitE.BackendStages.BytePieces
