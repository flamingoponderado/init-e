import InitE.BackendStages.BytesData80
import InitE.BackendStages.BytePiecesData80
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section80_eq : ByteData.bytes80 = [piece80_0].flatten := by
  rw [piece80_0_eq]
  rfl
#print axioms section80_eq
end InitE.BackendStages.BytePieces
