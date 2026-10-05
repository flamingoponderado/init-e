import Tools.GenSmallStages
import InitE.SmallStages.Oracles449
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 449 InitE.WordStages.source449.2.1 InitE.WordStages.source449.2.2 InitE.SmallStages.Oracles449.oracle449
