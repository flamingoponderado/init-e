import InitE.BackendStages.BytesData797
import InitE.BackendStages.BytePiecesData797
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section797_eq : ByteData.bytes797 = [piece797_0].flatten := by
  rw [piece797_0_eq]
  rfl
#print axioms section797_eq
end InitE.BackendStages.BytePieces
