import InitE.BackendStages.BytesData242
import InitE.BackendStages.BytePiecesData242
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section242_eq : ByteData.bytes242 = [piece242_0].flatten := by
  rw [piece242_0_eq]
  rfl
#print axioms section242_eq
end InitE.BackendStages.BytePieces
