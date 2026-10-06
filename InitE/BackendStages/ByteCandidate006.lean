import InitE.BackendStages.BytePiecesData134
import InitE.BackendStages.BytePiecesData135
import InitE.BackendStages.BytePiecesData136
import InitE.BackendStages.BytePiecesData137
import InitE.BackendStages.BytePiecesData138
import InitE.BackendStages.BytePiecesData139
import InitE.BackendStages.BytePiecesData140
import InitECandidate.Bytes006
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem candidate006_eq : InitECandidate.bytes006 = [piece134_1, piece135_0, piece136_0, piece137_0, piece138_0, piece139_0, piece140_0].flatten := by
  rw [piece134_1_eq, piece135_0_eq, piece136_0_eq, piece137_0_eq, piece138_0_eq, piece139_0_eq, piece140_0_eq]
  rfl
#print axioms candidate006_eq
end InitE.BackendStages.BytePieces
