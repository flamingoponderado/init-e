import InitE.BackendStages.BytesData887
import InitE.BackendStages.BytePiecesData887
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section887_eq : ByteData.bytes887 = [piece887_0].flatten := by
  rw [piece887_0_eq]
  rfl
#print axioms section887_eq
end InitE.BackendStages.BytePieces
