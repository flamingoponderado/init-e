import InitE.BackendStages.BytesData402
import InitE.BackendStages.BytePiecesData402
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section402_eq : ByteData.bytes402 = [piece402_0].flatten := by
  rw [piece402_0_eq]
  rfl
#print axioms section402_eq
end InitE.BackendStages.BytePieces
