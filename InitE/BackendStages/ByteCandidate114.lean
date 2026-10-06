import InitE.BackendStages.BytePiecesData627
import InitE.BackendStages.BytePiecesData628
import InitE.BackendStages.BytePiecesData629
import InitE.BackendStages.BytePiecesData630
import InitE.BackendStages.BytePiecesData631
import InitE.BackendStages.BytePiecesData632
import InitECandidate.Bytes114
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem candidate114_eq : InitECandidate.bytes114 = [piece627_1, piece628_0, piece629_0, piece630_0, piece631_0, piece632_0].flatten := by
  rw [piece627_1_eq, piece628_0_eq, piece629_0_eq, piece630_0_eq, piece631_0_eq, piece632_0_eq]
  rfl
#print axioms candidate114_eq
end InitE.BackendStages.BytePieces
