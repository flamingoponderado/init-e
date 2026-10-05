import InitE.BackendStages.BytesData540
import InitE.BackendStages.BytePiecesData540
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section540_eq : ByteData.bytes540 = [piece540_0].flatten := by
  rw [piece540_0_eq]
  rfl
#print axioms section540_eq
end InitE.BackendStages.BytePieces
