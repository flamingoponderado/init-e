import InitE.BackendStages.BytesData329
import InitE.BackendStages.BytePiecesData329
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section329_eq : ByteData.bytes329 = [piece329_0].flatten := by
  rw [piece329_0_eq]
  rfl
#print axioms section329_eq
end InitE.BackendStages.BytePieces
