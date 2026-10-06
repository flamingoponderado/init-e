import InitE.BackendStages.BytesData584
import InitE.BackendStages.BytePiecesData584
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section584_eq : ByteData.bytes584 = [piece584_0].flatten := by
  rw [piece584_0_eq]
  rfl
#print axioms section584_eq
end InitE.BackendStages.BytePieces
