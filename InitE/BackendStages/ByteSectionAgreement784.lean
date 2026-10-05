import InitE.BackendStages.BytesData784
import InitE.BackendStages.BytePiecesData784
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section784_eq : ByteData.bytes784 = [piece784_0].flatten := by
  rw [piece784_0_eq]
  rfl
#print axioms section784_eq
end InitE.BackendStages.BytePieces
