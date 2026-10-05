import InitE.BackendStages.BytesData596
import InitE.BackendStages.BytePiecesData596
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section596_eq : ByteData.bytes596 = [piece596_0].flatten := by
  rw [piece596_0_eq]
  rfl
#print axioms section596_eq
end InitE.BackendStages.BytePieces
