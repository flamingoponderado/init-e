import InitE.BackendStages.BytesData861
import InitE.BackendStages.BytePiecesData861
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section861_eq : ByteData.bytes861 = [piece861_0].flatten := by
  rw [piece861_0_eq]
  rfl
#print axioms section861_eq
end InitE.BackendStages.BytePieces
