import InitE.BackendStages.BytesData610
import InitE.BackendStages.BytePiecesData610
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section610_eq : ByteData.bytes610 = [piece610_0, piece610_1].flatten := by
  rw [piece610_0_eq, piece610_1_eq]
  rfl
#print axioms section610_eq
end InitE.BackendStages.BytePieces
