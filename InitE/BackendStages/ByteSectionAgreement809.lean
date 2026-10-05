import InitE.BackendStages.BytesData809
import InitE.BackendStages.BytePiecesData809
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section809_eq : ByteData.bytes809 = [piece809_0, piece809_1].flatten := by
  rw [piece809_0_eq, piece809_1_eq]
  rfl
#print axioms section809_eq
end InitE.BackendStages.BytePieces
