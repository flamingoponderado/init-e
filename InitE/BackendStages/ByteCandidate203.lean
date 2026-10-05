import InitE.BackendStages.BytePiecesData848
import InitE.BackendStages.BytePiecesData849
import InitE.BackendStages.BytePiecesData850
import InitECandidate.Bytes203
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem candidate203_eq : InitECandidate.bytes203 = [piece848_1, piece849_0, piece850_0].flatten := by
  rw [piece848_1_eq, piece849_0_eq, piece850_0_eq]
  rfl
#print axioms candidate203_eq
end InitE.BackendStages.BytePieces
