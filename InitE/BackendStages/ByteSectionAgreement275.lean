import InitE.BackendStages.BytesData275
import InitE.BackendStages.BytePiecesData275
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section275_eq : ByteData.bytes275 = [piece275_0].flatten := by
  rw [piece275_0_eq]
  rfl
#print axioms section275_eq
end InitE.BackendStages.BytePieces
