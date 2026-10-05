import InitE.BackendStages.BytePiecesData865
import InitE.BackendStages.BytePiecesData866
import InitECandidate.Bytes210
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem candidate210_eq : InitECandidate.bytes210 = [piece865_0, piece866_0].flatten := by
  rw [piece865_0_eq, piece866_0_eq]
  rfl
#print axioms candidate210_eq
end InitE.BackendStages.BytePieces
