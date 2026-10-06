import InitE.BackendStages.BytesData81
import InitE.BackendStages.BytePiecesData81
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section81_eq : ByteData.bytes81 = [piece81_0].flatten := by
  rw [piece81_0_eq]
  rfl
#print axioms section81_eq
end InitE.BackendStages.BytePieces
