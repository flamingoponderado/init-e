import InitE.BackendStages.BytesData361
import InitE.BackendStages.BytePiecesData361
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section361_eq : ByteData.bytes361 = [piece361_0].flatten := by
  rw [piece361_0_eq]
  rfl
#print axioms section361_eq
end InitE.BackendStages.BytePieces
