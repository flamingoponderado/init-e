import InitE.BackendStages.BytesData174
import InitE.BackendStages.BytePiecesData174
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section174_eq : ByteData.bytes174 = [piece174_0].flatten := by
  rw [piece174_0_eq]
  rfl
#print axioms section174_eq
end InitE.BackendStages.BytePieces
