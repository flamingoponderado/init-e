import InitE.BackendStages.BytesData711
import InitE.BackendStages.BytePiecesData711
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section711_eq : ByteData.bytes711 = [piece711_0].flatten := by
  rw [piece711_0_eq]
  rfl
#print axioms section711_eq
end InitE.BackendStages.BytePieces
