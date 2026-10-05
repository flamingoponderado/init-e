import Tools.GenSmallStages
import InitE.SmallStages.Oracles617
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 617 InitE.WordStages.source617.2.1 InitE.WordStages.source617.2.2 InitE.SmallStages.Oracles617.oracle617
