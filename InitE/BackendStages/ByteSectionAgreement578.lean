import InitE.BackendStages.BytesData578
import InitE.BackendStages.BytePiecesData578
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section578_eq : ByteData.bytes578 = [piece578_0, piece578_1].flatten := by
  rw [piece578_0_eq, piece578_1_eq]
  rfl
#print axioms section578_eq
end InitE.BackendStages.BytePieces
