import InitE.BackendStages.BytesData830
import InitE.BackendStages.BytePiecesData830
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section830_eq : ByteData.bytes830 = [piece830_0, piece830_1].flatten := by
  rw [piece830_0_eq, piece830_1_eq]
  rfl
#print axioms section830_eq
end InitE.BackendStages.BytePieces
