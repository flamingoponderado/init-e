import InitE.BackendStages.BytesData147
import InitE.BackendStages.BytePiecesData147
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section147_eq : ByteData.bytes147 = [piece147_0].flatten := by
  rw [piece147_0_eq]
  rfl
#print axioms section147_eq
end InitE.BackendStages.BytePieces
