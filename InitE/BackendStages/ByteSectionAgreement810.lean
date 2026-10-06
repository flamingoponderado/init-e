import InitE.BackendStages.BytesData810
import InitE.BackendStages.BytePiecesData810
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section810_eq : ByteData.bytes810 = [piece810_0, piece810_1].flatten := by
  rw [piece810_0_eq, piece810_1_eq]
  rfl
#print axioms section810_eq
end InitE.BackendStages.BytePieces
