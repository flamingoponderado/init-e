import InitE.BackendStages.BytesData212
import InitE.BackendStages.BytePiecesData212
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section212_eq : ByteData.bytes212 = [piece212_0].flatten := by
  rw [piece212_0_eq]
  rfl
#print axioms section212_eq
end InitE.BackendStages.BytePieces
