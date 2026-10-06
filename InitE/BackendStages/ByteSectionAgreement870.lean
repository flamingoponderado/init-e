import InitE.BackendStages.BytesData870
import InitE.BackendStages.BytePiecesData870
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section870_eq : ByteData.bytes870 = [piece870_0].flatten := by
  rw [piece870_0_eq]
  rfl
#print axioms section870_eq
end InitE.BackendStages.BytePieces
