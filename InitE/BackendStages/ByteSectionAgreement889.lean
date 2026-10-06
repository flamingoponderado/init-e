import InitE.BackendStages.BytesData889
import InitE.BackendStages.BytePiecesData889
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section889_eq : ByteData.bytes889 = [piece889_0].flatten := by
  rw [piece889_0_eq]
  rfl
#print axioms section889_eq
end InitE.BackendStages.BytePieces
