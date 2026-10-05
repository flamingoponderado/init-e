import InitE.BackendStages.BytePiecesData694
import InitE.BackendStages.BytePiecesData695
import InitE.BackendStages.BytePiecesData696
import InitE.BackendStages.BytePiecesData697
import InitECandidate.Bytes139
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem candidate139_eq : InitECandidate.bytes139 = [piece694_2, piece695_0, piece696_0, piece697_0].flatten := by
  rw [piece694_2_eq, piece695_0_eq, piece696_0_eq, piece697_0_eq]
  rfl
#print axioms candidate139_eq
end InitE.BackendStages.BytePieces
