import Tools.GenSmallStages
import InitE.SmallStages.Oracles607
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 607 InitE.WordStages.source607.2.1 InitE.WordStages.source607.2.2 InitE.SmallStages.Oracles607.oracle607
