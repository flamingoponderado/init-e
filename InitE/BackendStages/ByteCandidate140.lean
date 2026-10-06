import InitE.BackendStages.BytePiecesData697
import InitE.BackendStages.BytePiecesData698
import InitE.BackendStages.BytePiecesData699
import InitE.BackendStages.BytePiecesData700
import InitECandidate.Bytes140
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem candidate140_eq : InitECandidate.bytes140 = [piece697_1, piece698_0, piece699_0, piece700_0].flatten := by
  rw [piece697_1_eq, piece698_0_eq, piece699_0_eq, piece700_0_eq]
  rfl
#print axioms candidate140_eq
end InitE.BackendStages.BytePieces
