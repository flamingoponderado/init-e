import InitE.BackendStages.BytesData260
import InitE.BackendStages.BytePiecesData260
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section260_eq : ByteData.bytes260 = [piece260_0].flatten := by
  rw [piece260_0_eq]
  rfl
#print axioms section260_eq
end InitE.BackendStages.BytePieces
