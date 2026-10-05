import InitE.BackendStages.BytePiecesData810
import InitE.BackendStages.BytePiecesData811
import InitE.BackendStages.BytePiecesData812
import InitECandidate.Bytes188
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem candidate188_eq : InitECandidate.bytes188 = [piece810_1, piece811_0, piece812_0].flatten := by
  rw [piece810_1_eq, piece811_0_eq, piece812_0_eq]
  rfl
#print axioms candidate188_eq
end InitE.BackendStages.BytePieces
