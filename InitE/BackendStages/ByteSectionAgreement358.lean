import InitE.BackendStages.BytesData358
import InitE.BackendStages.BytePiecesData358
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section358_eq : ByteData.bytes358 = [piece358_0].flatten := by
  rw [piece358_0_eq]
  rfl
#print axioms section358_eq
end InitE.BackendStages.BytePieces
