import Tools.GenSmallStages
import InitE.SmallStages.Oracles698
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 698 InitE.WordStages.source698.2.1 InitE.WordStages.source698.2.2 InitE.SmallStages.Oracles698.oracle698
