import InitE.BackendStages.BytesData606
import InitE.BackendStages.BytePiecesData606
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section606_eq : ByteData.bytes606 = [piece606_0].flatten := by
  rw [piece606_0_eq]
  rfl
#print axioms section606_eq
end InitE.BackendStages.BytePieces
