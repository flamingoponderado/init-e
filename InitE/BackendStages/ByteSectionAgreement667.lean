import InitE.BackendStages.BytesData667
import InitE.BackendStages.BytePiecesData667
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section667_eq : ByteData.bytes667 = [piece667_0].flatten := by
  rw [piece667_0_eq]
  rfl
#print axioms section667_eq
end InitE.BackendStages.BytePieces
