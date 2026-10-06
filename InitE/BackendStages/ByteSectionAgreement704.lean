import InitE.BackendStages.BytesData704
import InitE.BackendStages.BytePiecesData704
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section704_eq : ByteData.bytes704 = [piece704_0].flatten := by
  rw [piece704_0_eq]
  rfl
#print axioms section704_eq
end InitE.BackendStages.BytePieces
