import InitE.BackendStages.BytesData595
import InitE.BackendStages.BytePiecesData595
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section595_eq : ByteData.bytes595 = [piece595_0, piece595_1].flatten := by
  rw [piece595_0_eq, piece595_1_eq]
  rfl
#print axioms section595_eq
end InitE.BackendStages.BytePieces
