import InitE.BackendStages.BytesData637
import InitE.BackendStages.BytePiecesData637
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section637_eq : ByteData.bytes637 = [piece637_0].flatten := by
  rw [piece637_0_eq]
  rfl
#print axioms section637_eq
end InitE.BackendStages.BytePieces
