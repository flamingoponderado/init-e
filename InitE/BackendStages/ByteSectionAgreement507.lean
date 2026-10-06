import InitE.BackendStages.BytesData507
import InitE.BackendStages.BytePiecesData507
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section507_eq : ByteData.bytes507 = [piece507_0].flatten := by
  rw [piece507_0_eq]
  rfl
#print axioms section507_eq
end InitE.BackendStages.BytePieces
