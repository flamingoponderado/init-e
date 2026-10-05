import InitE.BackendStages.BytesData166
import InitE.BackendStages.BytePiecesData166
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section166_eq : ByteData.bytes166 = [piece166_0, piece166_1].flatten := by
  rw [piece166_0_eq, piece166_1_eq]
  rfl
#print axioms section166_eq
end InitE.BackendStages.BytePieces
