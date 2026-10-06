import InitE.BackendStages.BytePiecesData184
import InitE.BackendStages.BytePiecesData185
import InitE.BackendStages.BytePiecesData186
import InitE.BackendStages.BytePiecesData187
import InitE.BackendStages.BytePiecesData188
import InitE.BackendStages.BytePiecesData189
import InitE.BackendStages.BytePiecesData190
import InitE.BackendStages.BytePiecesData191
import InitECandidate.Bytes013
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem candidate013_eq : InitECandidate.bytes013 = [piece184_1, piece185_0, piece186_0, piece187_0, piece188_0, piece189_0, piece190_0, piece191_0].flatten := by
  rw [piece184_1_eq, piece185_0_eq, piece186_0_eq, piece187_0_eq, piece188_0_eq, piece189_0_eq, piece190_0_eq, piece191_0_eq]
  rfl
#print axioms candidate013_eq
end InitE.BackendStages.BytePieces
