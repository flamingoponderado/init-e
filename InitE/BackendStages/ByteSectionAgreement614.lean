import InitE.BackendStages.BytesData614
import InitE.BackendStages.BytePiecesData614
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section614_eq : ByteData.bytes614 = [piece614_0].flatten := by
  rw [piece614_0_eq]
  rfl
#print axioms section614_eq
end InitE.BackendStages.BytePieces
