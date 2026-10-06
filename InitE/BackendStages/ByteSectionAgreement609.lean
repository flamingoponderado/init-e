import InitE.BackendStages.BytesData609
import InitE.BackendStages.BytePiecesData609
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section609_eq : ByteData.bytes609 = [piece609_0].flatten := by
  rw [piece609_0_eq]
  rfl
#print axioms section609_eq
end InitE.BackendStages.BytePieces
