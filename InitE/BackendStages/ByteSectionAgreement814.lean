import InitE.BackendStages.BytesData814
import InitE.BackendStages.BytePiecesData814
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section814_eq : ByteData.bytes814 = [piece814_0].flatten := by
  rw [piece814_0_eq]
  rfl
#print axioms section814_eq
end InitE.BackendStages.BytePieces
